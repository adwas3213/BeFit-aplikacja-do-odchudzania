package pl.befit.projektnaio.CalculateCaloriesInFood;

public class Dish {

    double percentageOfFat;
    double percentageOfCarbohydrantes;
    double percentageOfNutreins;

    double caloriesInFatInThatPeaceOfFood;
    double caloriesInCarbohydratesInThatPeaceOfFood;
    double caloriesInNutreinsInThatPeaceOfFood;
    double summaryCalories;
    String nameOfProduct;
    double weightOfProduct;

    public Dish(double percentageOfFat, double percentageOfCarbohydrantes, double percentageOfNutreins, double caloriesInFatInThatPeaceOfFood, double caloriesInCarbohydratesInThatPeaceOfFood, double caloriesInNutreinsInThatPeaceOfFood, double summaryCalories,String nameOfProduct,double weightOfProduct ) {
        this.percentageOfFat = percentageOfFat;
        this.percentageOfCarbohydrantes = percentageOfCarbohydrantes;
        this.percentageOfNutreins = percentageOfNutreins;
        this.caloriesInFatInThatPeaceOfFood = caloriesInFatInThatPeaceOfFood;
        this.caloriesInCarbohydratesInThatPeaceOfFood = caloriesInCarbohydratesInThatPeaceOfFood;
        this.caloriesInNutreinsInThatPeaceOfFood = caloriesInNutreinsInThatPeaceOfFood;
        this.summaryCalories = summaryCalories;
        this.nameOfProduct=nameOfProduct;
        this.weightOfProduct=weightOfProduct;

    }

    public double getPercentageOfFat() {
        return percentageOfFat;
    }

    public void setPercentageOfFat(double percentageOfFat) {
        this.percentageOfFat = percentageOfFat;
    }

    public double getPercentageOfCarbohydrantes() {
        return percentageOfCarbohydrantes;
    }

    public void setPercentageOfCarbohydrantes(double percentageOfCarbohydrantes) {
        this.percentageOfCarbohydrantes = percentageOfCarbohydrantes;
    }

    public double getPercentageOfNutreins() {
        return percentageOfNutreins;
    }

    public void setPercentageOfNutreins(double percentageOfNutreins) {
        this.percentageOfNutreins = percentageOfNutreins;
    }

    public double getCaloriesInFatInThatPeaceOfFood() {
        return caloriesInFatInThatPeaceOfFood;
    }

    public void setCaloriesInFatInThatPeaceOfFood(double caloriesInFatInThatPeaceOfFood) {
        this.caloriesInFatInThatPeaceOfFood = caloriesInFatInThatPeaceOfFood;
    }

    public double getCaloriesInCarbohydratesInThatPeaceOfFood() {
        return caloriesInCarbohydratesInThatPeaceOfFood;
    }

    public void setCaloriesInCarbohydratesInThatPeaceOfFood(double caloriesInCarbohydratesInThatPeaceOfFood) {
        this.caloriesInCarbohydratesInThatPeaceOfFood = caloriesInCarbohydratesInThatPeaceOfFood;
    }

    public double getCaloriesInNutreinsInThatPeaceOfFood() {
        return caloriesInNutreinsInThatPeaceOfFood;
    }

    public void setCaloriesInNutreinsInThatPeaceOfFood(double caloriesInNutreinsInThatPeaceOfFood) {
        this.caloriesInNutreinsInThatPeaceOfFood = caloriesInNutreinsInThatPeaceOfFood;
    }

    public double getSummaryCalories() {
        return summaryCalories;
    }

    public void setSummaryCalories(double summaryCalories) {
        this.summaryCalories = summaryCalories;
    }

    public String getNameOfProduct() {
        return nameOfProduct;
    }

    public void setNameOfProduct(String nameOfProduct) {
        this.nameOfProduct = nameOfProduct;
    }

    public double getWeightOfProduct() {
        return weightOfProduct;
    }

}
