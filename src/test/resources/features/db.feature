@wip
Feature: DB

  Scenario Outline:

    Given Database baglantisi kurulur.
    Then Staff tablosundaki "5" leri listeler.
    Then Verilen "Id" dogrulanir.
    And Database baglantisi kapatilir





    Examples:
    |Id|
    |52|