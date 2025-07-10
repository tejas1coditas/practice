void main() {
  
  String s = "abc";
  try{
    int num = int.parse(s);
    print(num);
  }
  catch(e){
        print(e);
  }
  finally{
    print("error aa gaya");
  }
}
