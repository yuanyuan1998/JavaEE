package com.cake.controller.user;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.cake.entity.cart.Cart;
import com.cake.entity.user.Address;
import com.cake.entity.user.User;
import com.cake.service.cart.CartService;
import com.cake.service.user.UserServiceImpl;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private UserServiceImpl userServiceImpl; 
	@Resource
	private CartService cartServlet;
	
	@RequestMapping(value="/regist")
	public String regist(User u,HttpSession session){
		User u1 = this.userServiceImpl.save(u);
		if(u1 != null){
			session.setAttribute("user", u1);
			return "index";
		}else
			return "regist";
	}
	
	@RequestMapping(value="/login")
	public String login(User u,HttpSession session,HttpServletRequest request){
		User u1 = this.userServiceImpl.checkUser(u.getName());
		if(u1 != null){
			if(u1.getPassword() .equals(u.getPassword())){
				session.setAttribute("user", u1);
				List<Cart> cartlist = this.cartServlet.findByUserId(u1.getId());
				int countNum;
				if(cartlist.size() == 0){
					countNum = 0;
				}else{
					countNum =  cartlist.get(0).getCountNum();
				}
				request.setAttribute("countNum",countNum);
				request.setAttribute("cartlist", cartlist);
				return "index";
			}else{
				request.setAttribute("errorinfo2", "密码填写错误");
				return "login";
			}
		}else{
			request.setAttribute("errorinfo1", "用户名填写错误");
			return "login";
		}
	}
	
	@RequestMapping(value = "checkUser.action", method = RequestMethod.POST)
    public void checkUser(HttpServletRequest request, HttpServletResponse response, HttpSession session)
           throws ServletException, IOException {
	       PrintWriter out = response.getWriter();
	    String name = request.getParameter("name");
	    if (name.trim().equals("")) {
	        out.print(2);// 2是不能为空
	    } else {
	            User user = userServiceImpl.checkUser(name);
	            if (user != null) {
	                out.print(1);// 1用户名已存在
	            }else
	            	out.print(3);//该用户名可以使用
	        }
	    }
	
	@RequestMapping(value="revice")
	public String reviceInfo(HttpSession session,User u,HttpServletRequest request){
		User u1 = (User) session.getAttribute("user");
		String password1 = request.getParameter("password1");
		if(u.getName() != null && !u.getName().equals("")){
			this.userServiceImpl.updateName(u1.getId(), u.getName());
		}
		if(u.getPhoneNum() != null && !u.getPhoneNum().equals("")){
			this.userServiceImpl.updatePhoneNum(u1.getId(),u.getPhoneNum());
		}
		if(u.getEmail() != null &&!u.getEmail().equals("")){
			this.userServiceImpl.updateEmail(u1.getId(),u.getEmail());
		}
		if(u.getPassword() != null && !u.getPassword().equals("") && !password1.equals("")){
			if(u1.getPassword().equals(u.getPassword())){
				this.userServiceImpl.updatePassword(u1.getId(), password1);
			}
		}
		User u2 = this.userServiceImpl.findById(u1.getId());
		session.setAttribute("user", u2);
		return "information";
	}
	
	@RequestMapping(value="upload")
	public String head(@RequestParam("head") CommonsMultipartFile head,HttpSession session,HttpServletRequest request) throws IOException{
		User u1 = (User) session.getAttribute("user");
		if(head != null && !head.equals("")){		
			String path = request.getSession().getServletContext().getRealPath("/images");
            String fileName = head.getOriginalFilename();//图片的文件名
            try {
                //获取输出流
                OutputStream os=new FileOutputStream(path+"/"+head.getOriginalFilename());
                //获取输入流 CommonsMultipartFile 中可以直接得到文件的流
                InputStream is=head.getInputStream();
                int temp;
                while((temp=is.read())!=(-1))
                {
                    os.write(temp);
                }
               os.flush();
               os.close();
               is.close();
            } catch (FileNotFoundException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }    
            String truePath=request.getContextPath() + "/" + "images" + "/"+ fileName;
			this.userServiceImpl.updateHead(u1.getId(),truePath);
		}
		return "information";
	}
}
