# Healthy-diet-website

Pregled projekta i neki važniji detalji:

- Ideja je bila da napravim sajt koji se bavi zdravom ishranom, pre svega.
  Da to bude sajt gde će korisnici pronaći zdrava, ali ukusna jela, a kuvari 
  moći da dodaju svoje recepte

- Kada se projekat pokrene, otvara se strana index.php. Na toj strani se nalaze polja
  za logovanje i registraciju korisnika. Korisnik ne može da pristupi sajtu ako nije ulogovan.
  U gornjem levom uglu nalazi se link koji vodi ka strani prijava_za_kuvara.php, gde se otvaraju
  polja za logovanje kuvara.

- Kada se korisnik uloguje, otvara se prva_strana.php, na kojoj korisnik može da pristupi 
  kompletnom sadržaju koji je njemu namenjen. U slučaju da je prijavljen kuvar, otvara se strana 
  dodaj_recept.php, gde kuvar popunjavanjem odredjenih polja može da ubacuje recepte u bazu.

- Korisnik može da vidi: 
  * početnu stranu, na kojoj je uvodna reč (pocetna.html), 
  * deo sa svim receptima iz baze (recepti.php), 
  * deo Naši kuvari (nasi_kuvari.html) koji prikazuje slike 
    i deo bigrafije svakog od kuvara koji može da dodaje recepte,
  * deo Nut vrednosti, koji otvara u novom tabu pdf fajl sa nutritivnim 
    vrednostima namirnica
  * deo Korisni linkovi gde se nalaze uglavnom stranice koje 
    se bave zdravom ishranom (saveti nutricioniste) i fizičkom aktivnošću.

- Delovi iz navigacije se uključuju u main element strane prva_strana.php

- Deo Recepti sadrži sliku svakog recepta i ime i prezime kuvara koji je taj 
  recept postavio (sa leve strane) i naziv recepta (desno) koji se može kliknuti
  i koji pokreće deo recept.php. U ovom delu prikazana je slika recepta, sastojci,
  kao i postupak za pravljenje tog jela. Pri dnu ove strane postoji deo za ocenu recepta.
  Prikazana je prvo prosečna ocena jela, a zatim postoji polje koje korisnik može
  da popuni i da pošalje svoju ocenu u bazu.

- Na svakoj strani postoji i dugme za odjavu.

Napomene:

- Deo koji bih želela posebno da napomenem vezan je za slike. Način na koji sam
  ubacila slike jela u projekat se ne poklapa sa mojom početnom idejom. Želela sam
  da kuvar može da ubacuje slike iz svog računara. Pokušala sam da iskoristim neke 
  ideje i predloge sa interneta, ali to nije uspelo (to je deo koji sam zakomentarisala
  u dodaj_recept.php), pa sam to odradila korišnjenjem već ubačenih slika sa interneta
  (preko url-a). Kada kuvar dodaje slike jela, on zapravo šalje adrese do slike sa interneta.

- Postoje i delovi koje nisam realizovala, a planirala sam da ubacim u projekat.
  Jedan od tih delova, što bih posebno napomenula asistentu, vezan je za bazu, tačnije za 
  tabelu 'recept'. Postoji kolona 'opis' u pomenutoj tabeli. Deluje kao da je ona višak, zato
  što nigde nije iskorišćena u projektu. Ta kolona je ubačena kako bi korisik mogao da odabere
  koja će jela biti izlistana (slana ili slatka). To bih uradila preko jQueryja (slideDown()). 
