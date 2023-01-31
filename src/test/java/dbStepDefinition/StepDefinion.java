package dbStepDefinition;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertTrue;
import static utilities.DBUtils.*;

public class StepDefinion {
    List<Object>staffIdList=new ArrayList<>();
    List<Object>usersPhoneList=new ArrayList<>();
    List<Object>emailList=new ArrayList<>();
    List<Object>adresList=new ArrayList<>();
    List<Object>userList=new ArrayList<>();
    @Given("Database baglantisi kurulur.")
    public void database_baglantisi_kurulur() {
        createConnection();
    }
    @Given("Staff tablosundaki {string} ler listelenir")
    public void staff_tablosundaki_ler_listelenir(String phone) {
        usersPhoneList=getColumnData("SELECT * FROM u480337000_tlb_training.staff",phone);
        System.out.println(staffIdList);
    }
    @Given("Verilen {string} dogrulanir.")
    public void verilen_dogrulanir(String arananId) {
        assertTrue(staffIdList.toString().contains(arananId));
    }
    @Given("Database baglantisi kapatilir.")
    public void database_baglantisi_kapatilir() {
        closeConnection();
    }

    @Given("Users tablosundaki {string} listelenir")
    public void users_tablosundaki_listelenir(String arananPhone) {
        usersPhoneList=getColumnData("SELECT * FROM u480337000_tlb_training.users",arananPhone);
        System.out.println(usersPhoneList);
    }

    @Given("Verilen {string} numarasi dogrulanir.")
    public void verilen_numarasi_dogrulanir(String arananPhone) {
        System.out.println(arananPhone);
        assertTrue(usersPhoneList.toString().contains(arananPhone));
    }

    @Given("Users tablosundaki {string} ler listelenir")
    public void users_tablosundaki_ler_listelenir(String email) {
        emailList=getColumnData("SELECT * FROM u480337000_tlb_training.users",email);
        System.out.println(emailList);
    }
    @Given("Verilen {string}'in listede oldugu dogrulanir")
    public void verilen_in_listede_oldugu_dogrulanir(String email) {
        assertTrue(emailList.toString().contains(email));
    }

    @Given("{string} numarasi verilen customerin {string} güncellenir.")
    public void numarasi_verilen_customerin_güncellenir(String id, String adresi) throws SQLException {

        update("UPDATE u480337000_tlb_training.customer_addresses SET address= '"+adresi+"' WHERE id="+id);

    }
    @Given("customer {string} tablosundaki adsress bilgileri listelenir.")
    public void customer_tablosundaki_adsress_bilgileri_listelenir(String adres) {

        adresList = getColumnData("SELECT * FROM u480337000_tlb_training.customer_addresses",adres);
        System.out.println(adresList);

    }
    @Given("{string} guncellendigi dogrulanir.")
    public void guncellendigi_dogrulanir(String adres) {

        assertTrue(adresList.toString().contains(adres));

    }

}




