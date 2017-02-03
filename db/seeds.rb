Image.create!([
  {url: "https://es.vwr.com/stibo/low_res/std.lang.all/18/22/6091822.jpg", product_id: 1},
  {url: "http://www.thefilipinodoctor.com/brandshot_images/Sodium-Bicarbonatebrandshots.jpg", product_id: 1},
  {url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTsJFONensEXccSM-vqoPtJGqpCWm_d68Pw53OkudV7V_Jt0wTauQ", product_id: 2},
  {url: "http://www.hivandhepatitis.com/2011_images/lipitor_crestor.jpg", product_id: 2},
  {url: "http://www.beardeddragon.co/image/cache/data/terramycin-500x500.jpg", product_id: 5},
  {url: "https://images10.newegg.com/ProductImage/A10N_131279718514840248dIAvMeGUHv.jpg", product_id: 5},
  {url: "http://img.timeinc.net/time/daily/2006/0611/acetaminophen1110.jpg", product_id: 6},
  {url: "http://thumbs.ebaystatic.com/images/g/9bYAAOSwQM9UZUAw/s-l225.jpg", product_id: 6},
  {url: "http://www.qu-medical.com/pharmacy/wp-content/uploads/Orphenadrine-Plus.jpg", product_id: 7},
  {url: "http://images.medscape.com/pi/features/drugdirectory/octupdate/AKN05380.jpg", product_id: 7},
  {url: "http://www.internationaldrugmart.com/drug-images/big/cycloserine_250mg_macleods.jpg", product_id: 19},
  {url: "https://static.wixstatic.com/media/b3f78e_ec1c12286b294372bfe6fdd5ea5d8e30.jpg_srz_498_280_75_22_0.5_1.2_75_png_srz", product_id: 19},
  {url: "http://www.images-iherb.com/l/NOW-00322-0.jpg", product_id: 20},
  {url: "http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/betarot.jpg?itok=g1Cv-WmI", product_id: 20}
])
Product.create!([
  {name: "Sodium Bicarbonate", price: 234, description: "Acid Indigestion and Upset Stomach", supplier_id: 1},
  {name: "Fusion Inhibitors ", price: 7686, description: "AIDS and HIV Infection", supplier_id: 1},
  {name: "Protectant (Ophthalmic)", price: 673, description: "Dry Eyes", supplier_id: 1},
  {name: "Acetaminophen ", price: 76, description: "Fever", supplier_id: 1},
  {name: "Orphenadrine", price: 901, description: "Leg Pain or Cramps\t", supplier_id: 1},
  {name: "Beta Carotene", price: 678, description: "Night Blindness\t", supplier_id: 1},
  {name: "Cycloserine", price: 7896, description: "Tuberculosis\t", supplier_id: 1}
])
Supplier.create!([
  {name: "Sophar", email: "sophar@sophar.org", phone: "0789546734"}
])
User.create!([
  {name: "Sandrine Tumurere", email: "tumurere@gmail.com", password_digest: "$2a$10$VIArgc5/TvSDQpij1c87pOCbtRG5kgO0UEqHoZ8jmv27/1Zyqh3My"},
  {name: "Sandrine Tumurere", email: "tumurere@gmail.com", password_digest: "$2a$10$ipGKx/YL2A8XK0oqyw3dP.j.kUSECh0ueijx8KdA1NZFXlTKqS7tO"}
])
