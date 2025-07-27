void main() {
  Car car = Car('Toyota', 'Camry', 2020, 2);
  print('Car Information');
  car.displayInfo();
  print('Retal Price for 5 dyasL: \$ ${car.calculateRentalPrice(5)}');
}

//   Basic class for all vehicles
class Vehicle {
  String brand;
  String model;
  int Year;

// Constructor for the Vehicle class
  Vehicle(this.brand, this.model, this.Year);

  void displayInfo() {
    print('Brand $brand');
    print('Model $model');
    print('Year $Year');
  }

// Method to calculate rental price
  double calculateRentalPrice(int days) {
    return days * 50.0;
  }
}

// car
class Car extends Vehicle {
  int door;
  Car(
    String brand,
    String model,
    int Year,
    this.door,
  ) : super(brand, model, Year);

  // Method to calculate rental price
  @override
  double calculateRentalPrice(int days) {
    return super.calculateRentalPrice(days) + 20 * door;
  }
}

//bike
// subclass for Bike
class Bike extends Vehicle {
  bool hasCarrier;

//   Constructor for the Bike class
Bike(String brand, String model, int year, this.hasCarrier)
  :super (brand, model, year);

//  Method to display this information
 @override
   void displayInfo(){
   super.displayInfo();  // Call the displayInfo method of the base class
   print('Has Carrier : ${hasCarrier ? 'Yes' : 'No'}');
 }

//  Method to calculate rental price
 @override
  double calculateRentalPrice(int days){
   return super.calculateRentalPrice(days) -
       (hasCarrier ? 5.0 : 0.0);  // Discount if has carrier
 }

}

//question
// user days  price (per day price)
// user form no. of doors