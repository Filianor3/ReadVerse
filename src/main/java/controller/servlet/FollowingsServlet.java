package controller.servlet;

import dao.DbUserDAO;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/FollowingsServlet")
public class FollowingsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DbUserDAO userDAO = (DbUserDAO) req.getServletContext().getAttribute("userDAO");
        Integer userID = Integer.valueOf(req.getParameter("userID"));
        List<User> followingsList;
        followingsList = userDAO.getUserFollowings(userID);
        req.setAttribute("followingsList", followingsList);
        req.setAttribute("userDAO", userDAO);
        req.setAttribute("userID", userID);
        req.setAttribute("req", req);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/followings.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

}
