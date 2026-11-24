const int irTransmitter = 6; 
const int irReceiver = 7;    
const int rainSensor = 8;    
const int buzzerPin = 9;     
const int pwmChannel = 0;
const int pwmFreq = 38000;     
const int pwmResolution = 8;   
const int dutyCycle = 127;    
unsigned long alarmEndTime = 0;   
bool isAlarming = false;         
unsigned long rainEndTime = 0;    
bool isRaining = false;           
bool rainLock = false;         
void setup() {
  Serial.begin(115200);
  ledcAttachChannel(irTransmitter, pwmFreq, pwmResolution, pwmChannel);
  pinMode(irReceiver, INPUT);
  pinMode(rainSensor, INPUT);    
  pinMode(buzzerPin, OUTPUT);
  digitalWrite(buzzerPin, HIGH); 
void loop() {
  //phát 38khz để thu hồng ngoại
  ledcWrite(irTransmitter, dutyCycle); 
  delayMicroseconds(600);              
  int irState = digitalRead(irReceiver); 
  ledcWrite(irTransmitter, 0);         
  delayMicroseconds(600);              
  int rainState = digitalRead(rainSensor);
  // mở khóa báo mưa khi cảm biến khô
  if (rainState == HIGH) {
    rainLock = false; 
  }
  // xử lý logic trộm và mưa
  if (irState == HIGH) { 
    isAlarming = true;
    alarmEndTime = millis() + 10000; 
    isRaining = false;               
  }
  if (!isAlarming && rainState == LOW && !rainLock) {
    isRaining = true;
    rainLock = true;                 
    rainEndTime = millis() + 10000;  
  }
  // điều khiển còi theo tình huống: nếu có trộm thì còi kêu
  if (isAlarming) {
    if (millis() < alarmEndTime) {
      digitalWrite(buzzerPin, LOW);  
      delay(150);                    
      digitalWrite(buzzerPin, HIGH); 
      delay(150);                    
    } else {;
      isAlarming = false;
      digitalWrite(buzzerPin, HIGH); 
    }
  }
  //nếu mưa thì còi kêu theo kiểu khác
  else if (isRaining) {
    if (millis() < rainEndTime) {
      digitalWrite(buzzerPin, LOW);  
      delay(600);                    
      digitalWrite(buzzerPin, HIGH); 
      delay(200);                    
    } else {;
      isRaining = false;
      digitalWrite(buzzerPin, HIGH); 
    }
  }
  //còi tắt nếu không có tín hiệu
  else {
    digitalWrite(buzzerPin, HIGH); 
    delay(50); 
  }
}
