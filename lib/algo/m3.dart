void main(){
  final List<String> inputs = ['010','1234','5678'];
  
  print(solution(inputs));
}

String solution(List<String> inputs) {
  String result = '모두연';

  for (int i = 0; i < inputs.length; i++){
    result += inputs[i];
    if(i != inputs.length -1){
      result += '-';
    }
  }
  return result;
}