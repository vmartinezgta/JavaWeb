
package Modelo;
import java.sql.ResultSet;
import java.util.HashMap;


public class Estediante extends Persona{
    private String codigo;
    private int idsangre;
    private conexion cn;

    public Estediante(){}

    public Estediante(String codigo, int idsangre, int id, String nombres, String apellidos, String direccion, String telefono, String fechanacimiento) {
        super(id, nombres, apellidos, direccion, telefono, fechanacimiento);
        this.codigo = codigo;
        this.idsangre = idsangre;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getIdsangre() {
        return idsangre;
    }

    public void setIdsangre(int idsangre) {
        this.idsangre = idsangre;
    }
    public HashMap dropsangre(){
        HashMap<String,String> drop = new HashMap();
        try {
            cn=new conexion();
            String query="select idsangre as id, sangre from sangre";
            cn.abrir_conexion();
            ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
            while(consulta.next()){
                drop.put(consulta.getString("id"), consulta.getString("sangre"));
            
            }
            cn.cerrar_conexion();
            
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return drop;
        
    
    }
    @Override
    public void agregar(){}
}
