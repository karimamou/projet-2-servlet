// Source Packages/model/User.java
package Model;

public class User {
    private String email;
    private String password;
    private String nom;
    private String Matricule;
    
    // User.java

 public User(String username, String password) {
        this.email = email;
        this.password = password;
    }
    public User(String name, String email, String password, String matricule) {
        this.nom = nom;
        this.email = email;
        this.password = password;
        this.Matricule = matricule;
    }

    // Getters et setters
    public String getName() {
        return nom;
    }

    public void setName(String name) {
        this.nom = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMatricule() {
        return Matricule;
    }

    public void setMatricule(String matricule) {
        this.Matricule = matricule;
    }
}


   

   

