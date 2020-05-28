
package es.albarregas.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TreeMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Francisco_Antonio
 */
@WebServlet(name = "Pais", urlPatterns = {"/Pais"})
public class Pais extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        String url = null;
        
        Locale locales[] = SimpleDateFormat.getAvailableLocales();
        
        for (int i = 0; i < locales.length; i++) {
            System.out.println(locales[i].getDisplayCountry() + " " + locales[i].getLanguage()+"_"+locales[i].getCountry());
        }
        
        
        TreeMap<String, String> mapaPaises = new TreeMap<String, String>();
        for (int i = 0; i < locales.length; i++) {
            if(!locales[i].getDisplayCountry().equals("")){
                mapaPaises.put(locales[i].getDisplayCountry(), (locales[i].getLanguage()+"_"+locales[i].getCountry()));
            }
            
        }
        
        sesion.setAttribute("paises", mapaPaises);
        url = "JSP/paises.jsp";
        request.getRequestDispatcher(url).forward(request, response);
    }

}
