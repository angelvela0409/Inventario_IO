package Controller;

import Entidad.Cliente;
import config.Conexion;
import jakarta.validation.Valid;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author EQUIPO
 */
@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int id;
   
//muestra la vista y lista los datos de BD
    @RequestMapping(value="index.htm")
    public ModelAndView Listar() {
        String sql = "select * from clientes";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;
    }
    
    //muestra la vista para agregar nuevo cliente en el formulario
    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar() {
        mav.addObject(new Cliente());
        mav.setViewName("agregar");
      return mav;
    }
// para hacer el envio de datos a la base de datos 
    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(@Valid Cliente c, BindingResult resultadoValidacion) {
            String sql = "insert into clientes(nombCliente, nombEmpresa, cantProducto, tipoProducto, lugDestino) values(?,?,?,?,?)";
            this.jdbcTemplate.update(sql, c.getNombCliente(), c.getNombEmpresa(), c.getCantProducto(), c.getTipoProducto(),   c.getLugDestino());
            return new ModelAndView("redirect:/catalogo.htm");
        

    }
     @RequestMapping(value="bodegap.htm")
    public ModelAndView Listar2() {
        String sql = "select * from bodega";
        List dato2 = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista2", dato2);
        mav.setViewName("bodegap");
        return mav;
    }
    
//muestra la vista catalogo
    @RequestMapping("catalogo.htm")
    public ModelAndView Listar4() {
        mav.setViewName("catalogo");
        return mav;

    }
//muestra la vista bodega y lista los datos
   
    @RequestMapping(value = "bodega.htm", method = RequestMethod.GET)
    public ModelAndView Agregarbodega() {
        mav.addObject(new Cliente());
        mav.setViewName("bodega");
        return mav;
      }
    //muestra la vista stockP y lista los datos
     @RequestMapping(value="stockP.htm")
    public ModelAndView Listar3() {
        String sql = "select * from productos";
        List dato3 = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista3", dato3);
        mav.setViewName("stockP");
        return mav;
    }
    @RequestMapping(value = "stock.htm", method = RequestMethod.GET)
    public ModelAndView Agregar3() {
        mav.addObject(new Cliente());
        mav.setViewName("stockP");
        return mav;
      }
    //muestra la vista de login para la creacion de usuario
     @RequestMapping("login.htm")
    public ModelAndView Agregar1() {
        mav.setViewName("login");
        return mav;
    }
}
