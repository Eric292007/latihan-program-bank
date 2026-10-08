//Sistem Mesin ATM
import 'dart:io';

void main(){
var ceklogin = true;
var jalan = true;
var pin = 112233;
var saldo = 2000000;

//Membuat fungsi untuk PIN
login(){
    //tanya user, "PIN Anda?"
    stdout.write('Masukkan PIN anda : ');
    //inputpinuser
    int pinuser = int.parse(stdin.readLineSync()!);
    //jika pin sama dengan inputpinuser
    if (pinuser == pin) {
    //ceklogin jadikan false
    ceklogin = false; 
    }
}

tampilmenu(){
    //tampilkan menu
    print('1. Cek Saldo');
    print('2. Setor Tunai');
    print('3. Tarik Tunai');
}

ceksaldo(){
    print("=======================================");
    print("Sisa saldo anda : $saldo");
}

setor(){
    print("=======================================");
    //tanya user ingin setor berapa?
    stdout.write('Masukkan nominal yang akan disetor : ');
    int inputsetor = int.parse(stdin.readLineSync()!);
    //setelah itu saldo ditambahkan dengan setoran yang sudah masuk ke rekening
    print('Terima kasih! Setor tunai telah berhasil!');
    saldo = inputsetor + saldo;

}

tarik(){
    print("=======================================");
    //tanya user tarik berapa?
    stdout.write('Masukkan nominal yang akan ditarik tunai : ');
    int inputtariktunai = int.parse(stdin.readLineSync()!);
    //tanya user pecahan 50rb atau 100rb
    stdout.write('Apakah anda ingin pecahan Rp.50000 atau Rp.100000');
    int inputpecahantunai = int.parse(stdin.readLineSync()!);
    if (inputpecahantunai == 100000) {
      inputpecahantunai = 100000;
      var hasilpecah = inputtariktunai ~/ inputpecahantunai;
      
    }else{
        inputpecahantunai = 50000;
    }
    // ~/ => 250rb ~/ 100rb = bukan 2.5 tapi 2 
    // if (inputpecahantunai == 100000) {
    //   var hasilpecah = inputtariktunai ~/ inputpecahantunai; 
    // }
}

//Menjalankan Coding
while(jalan == true){
    if(ceklogin == true){
        login();
        }else{
            print("=======================================");
            print('Bank Serba Ada');
            print("=======================================");
            tampilmenu();
            //tanya user menu mana yang dipilih
            stdout.write("Pilih menu yang anda inginkan! 1/2/3 : ");
            int inputuser = int.parse(stdin.readLineSync()!);
            switch(inputuser){
               case 1 : 
               ceksaldo();
               case 2 :  
               setor();
               case 3 :
               tarik();
            }
            //Switch Case
            //Case 1 : ceksaldo();
            //Case 2 : setor();
            //Case 3 : tarik();
        }
    }
}