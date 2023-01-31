
Feature: DB_sorgulama
  #Database baglantisi kurarak staff tablosundaki Id'lerin icinde "5" id numarasina sahip staff var mı kontrol edelim
#SELECT * FROM u480337000_tlb_training.staff;
  Scenario Outline: Staff tablosundan "ID" sorgulama

    * Database baglantisi kurulur.
    * Staff tablosundaki "id" ler listelenir
    * Verilen "<id>" dogrulanir.
    * Database baglantisi kapatilir.


    Examples:
    |id|
    |5|




  #Bir yonetici olarak Database üzerinden kullanici telefon numaralarini
  #Listeleyebilmeli ve istenen telefon numarasinin Users tablosunda olup
  #olmadıgını dogrulayabilmeliyim

   Scenario Outline:
     * Database baglantisi kurulur.
     * Users tablosundaki "phone" listelenir
     * Verilen "<phone>" numarasi dogrulanir.
     * Database baglantisi kapatilir.


     Examples:
     |phone|
     |+1 (922) 361-3194|





     #Bir yonetici olarak DataBase üzerinden kullanici email adresini listeleyebilmeli
     #ve istenen e-mail adresinin Users tablosunda olup olmadıgını dogrulyabilmeliyim

     Scenario Outline:
       * Database baglantisi kurulur.
       * Users tablosundaki "email" ler listelenir
       * Verilen "<email>"'in listede oldugu dogrulanir
       * Database baglantisi kapatilir.

       Examples:
       |email|
       |info@trendlifebuy.com|



    #Bir yonetici olarak DataBase uzerinden customer_addreses tablosundaki
    #istenen Customer'in adress bilgisini guncelleyebilmeli ve guncellenen
    #adresi customer_addreses tablosunda oldugunu dogrulayabilmeliyim

  Scenario Outline:
    * Database baglantisi kurulur.
    * "<id>" numarasi verilen customerin "<adresi>" güncellenir.
    * customer "address" tablosundaki adsress bilgileri listelenir.
    * "<adresi>" guncellendigi dogrulanir.
    *  Database baglantisi kapatilir.
    Examples:
      |id|adresi|
      |8| bolu  |

    #Bir yonetici olarak DataBase üzerinden User kaydi olusturabilmeli,
    # ve olusturdugum kayidin User listesinde oldugunu dogrulayabilmeliyim.
    @wip
    Scenario Outline:
      * Database baglantisi kurulur.
      * "<first_name>","<last_name>","<username>","<email>","<id>","<role_id>","<password>" girilerek user kaydi olusturulur
      * Users tablosunda bulunan "<id>"ler listelenir
      * Olusturulan userin listede oldugu dogrulanir
      * Database baglantisi kapatilir.



      Examples:
      |first_name|last_name|username|email|id|role_id|password|
      ||                   |        |     |  |       |        |

