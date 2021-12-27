package pl.befit.projektnaio.EnteryPoint.Register;

import jakarta.servlet.http.HttpServletRequest;

import java.time.LocalDate;

public class RegisterDTO {
    private String email;
    private String password;
    private String phoneNumber;
    private LocalDate birdhDate;
    public static RegisterDTO  RegisterDTO(HttpServletRequest request)
    {
         String email = request.getParameter("email");
         String password= request.getParameter("password");
         String phoneNumber= request.getParameter("phoneNumber");
         String notParsedBirdhDate=  request.getParameter("birdhDate");

        String [] values= notParsedBirdhDate.split("-");

        return  new RegisterDTO(email,password,phoneNumber,LocalDate.of(Integer.parseInt(values[0]),Integer.parseInt(values[1]),Integer.parseInt(values[2])));
    }
    public RegisterDTO(String email, String password, String phoneNumber, LocalDate birdhDate) {
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.birdhDate = birdhDate;
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

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public LocalDate getBirdhDate() {
        return birdhDate;
    }

    public void setBirdhDate(LocalDate birdhDate) {
        this.birdhDate = birdhDate;
    }

    @Override
    public String toString() {
        return "RegisterDTO{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", birdhDate=" + birdhDate +
                '}';
    }
}
