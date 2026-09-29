/*
  Akun:
  Username: 
  Password:
*/
String klasifikasiTierMl(double stars) {
  if (stars < 100) {
    return 'Bronze';
  } else if (stars >= 100 && stars < 200) {
    return 'Silver';
  } else if (stars >= 200 && stars < 300) {
    return 'Gold';
  } else {
    return 'Platinum';
  }
}

void main(){
  print(klasifikasiTierMl(150)); 
}