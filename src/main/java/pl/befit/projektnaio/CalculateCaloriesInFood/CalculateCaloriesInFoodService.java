package pl.befit.projektnaio.CalculateCaloriesInFood;

public class CalculateCaloriesInFoodService {
    public static Dish createDishFromFoodDTO(FoodDTO dto)
    {
        double caloriesInFatInThatPeaceOfFood= 9*dto.getGramsOfFat()*dto.getGramsOfFood()/100;
        double caloriesInNutreinsInThatPeaceOfFood= 4*dto.getGramsOfNutreins()*dto.getGramsOfFood()/100;
        double caloriesInCarbohydratesInThatPeaceOfFood= 4*dto.getGramsOfCarbohydrates()*dto.getGramsOfFood()/100;

        double sum=caloriesInFatInThatPeaceOfFood+caloriesInNutreinsInThatPeaceOfFood+caloriesInCarbohydratesInThatPeaceOfFood;
        double percentageOfFat=(caloriesInFatInThatPeaceOfFood/sum)*100;
        double percentageOfNutreins=(caloriesInNutreinsInThatPeaceOfFood/sum)*100;
        double percentageOfCarbohydrates=(caloriesInCarbohydratesInThatPeaceOfFood/sum)*100;

        percentageOfCarbohydrates=Math.round(percentageOfCarbohydrates);
        percentageOfNutreins=Math.round(percentageOfNutreins);
        percentageOfFat=Math.round(percentageOfFat);

        sum = round4Numbers(sum, 1000);

        caloriesInFatInThatPeaceOfFood = round4Numbers(caloriesInFatInThatPeaceOfFood, 100);

        caloriesInCarbohydratesInThatPeaceOfFood = round4Numbers(caloriesInCarbohydratesInThatPeaceOfFood, 100);

        caloriesInNutreinsInThatPeaceOfFood = round4Numbers(caloriesInNutreinsInThatPeaceOfFood, 100);

        return new Dish(percentageOfFat,percentageOfCarbohydrates,percentageOfNutreins,caloriesInFatInThatPeaceOfFood,caloriesInCarbohydratesInThatPeaceOfFood,caloriesInNutreinsInThatPeaceOfFood,sum,dto.getNameOfProduct(),dto.getGramsOfFood());
    }

    private static double round4Numbers(double sum, int i) {
        sum *= i;
        sum = Math.round(sum);
        sum /= i;
        return sum;
    }
}
