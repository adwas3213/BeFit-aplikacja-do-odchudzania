package pl.befit.projektnaio.checkCaloryDemand;

import java.util.Optional;

import static java.lang.Math.round;

public class CaloryDemandService {

    public static BMIDTO calculateBMI(CaloryDemandDTO caloryDemandDTO)//caloryDemandDTO nie będzie NULL -> zabezpieczone we frontendzie
    {
        double height= caloryDemandDTO.getHeight()/100;
        double bmi= caloryDemandDTO.getWeight() / (height*height);

        String color;
        if(bmi<17)
        {
            color="red";
        }else if(bmi<18.50)
        {
            color="orange";
        } else if(bmi<25)
        {
            color="green";
        }else if(bmi<30)
        {
            color="orange";
        } else
        {
            color="red";
        }
        bmi*=100;
        bmi= round(bmi);
        bmi/=100;
        if(bmi>40) bmi=40;
        return new BMIDTO(bmi,color);

    }
    public static CaloryDemandWithDescriptionDTO calculateCaloryDemand(CaloryDemandDTO caloryDemandDTO)
    {
        double caloryDemand=0;
        StringBuilder description=new StringBuilder();
        if(caloryDemandDTO.getGender()==Gender.MALE)
        {
            caloryDemand=66+13.7*caloryDemandDTO.getWeight()+5*caloryDemandDTO.getHeight()-6.76*caloryDemandDTO.getAge();
        } else
        {
            caloryDemand=655+9.6*caloryDemandDTO.getWeight()+1.8*caloryDemandDTO.getHeight()-4.7*caloryDemandDTO.getAge();
        }
        description
                .append("Jako że jesteś ")
                .append(caloryDemandDTO.getGender().getName());
                if(caloryDemandDTO.getGender()==Gender.MALE)
                {
                    description.append(" mającym ");
                } else
                {
                    description.append(" mającą ");
                }
                description
                .append(caloryDemandDTO.getAge())

                .append(" lat oraz twój wzrost to ")
                .append(caloryDemandDTO.getHeight())
                .append(" centymetrów a twoja waga to ")
                .append(caloryDemandDTO.getWeight())
                .append(" kilogramów . Przy ")
                .append(caloryDemandDTO.getActivityLevel().getLevel())
                .append(" aktywności w trakcie dnia.");

        if(caloryDemandDTO.getActivityLevel()==ActivityLevel.LOW)
        {
            caloryDemand*=1.2;
        }else if(caloryDemandDTO.getActivityLevel()==ActivityLevel.MEDIUM)
        {
            caloryDemand*=1.5;
        } else if(caloryDemandDTO.getActivityLevel()==ActivityLevel.HIGH)
        {
            caloryDemand*=1.8;
        }

        return new CaloryDemandWithDescriptionDTO(description.toString(),Math.round(caloryDemand));

    }
}
