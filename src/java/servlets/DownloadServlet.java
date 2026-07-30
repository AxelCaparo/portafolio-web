package servlets;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DownloadServlet", urlPatterns = {"/download"})
public class DownloadServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String fileName = request.getParameter("file");
        
        if (fileName == null || fileName.isEmpty()) {
            response.setContentType("text/html");
            response.getWriter().println("<h1>Servlet funcionando</h1>");
            return;
        }
        
        String realPath = getServletContext().getRealPath("/" + fileName);
        File file = new File(realPath);
        
        if (!file.exists()) {
            response.setContentType("text/html");
            response.getWriter().println("<h1>Error 404</h1>");
            response.getWriter().println("<p>Archivo no encontrado: " + fileName + "</p>");
            response.getWriter().println("<p>Ruta buscada: " + realPath + "</p>");
            return;
        }
        
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + file.getName() + "\"");
        response.setContentLength((int) file.length());
        
        try (FileInputStream fis = new FileInputStream(file)) {
            byte[] buffer = new byte[4096];
            int bytesRead;
            while ((bytesRead = fis.read(buffer)) != -1) {
                response.getOutputStream().write(buffer, 0, bytesRead);
            }
        }
    }
}