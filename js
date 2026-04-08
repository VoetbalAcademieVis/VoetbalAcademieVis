<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js"></script>
<script>
// GSAP animaties voor hero
gsap.registerPlugin(ScrollTrigger);

gsap.from(".hero h1", { y: 80, opacity: 0, duration: 1, ease: "power3.out" });
gsap.from(".hero .subheadline", { y: 80, opacity: 0, duration: 1, delay: 0.3 });
gsap.from(".hero .cta-button", { scale: 0.8, opacity: 0, duration: 0.8, delay: 0.6 });

// Zorg dat alle andere CTA-knoppen (bijv. formulier) altijd zichtbaar zijn
document.querySelectorAll("form .cta-button").forEach(btn => {
  btn.style.opacity = "1";
  btn.style.transform = "scale(1)";
});

// ScrollTrigger animaties voor cards etc.
gsap.utils.toArray(".card-section").forEach(section => {
  gsap.from(section, {
    scrollTrigger: { trigger: section, start: "top 80%" },
    y: 100,
    opacity: 0,
    duration: 1
  });
});
gsap.from(".wiebenik-foto", {
  scrollTrigger: { trigger: ".wiebenik-container", start: "top 80%" },
  x: -100,
  opacity: 0,
  duration: 1
});

// Hamburger menu en dropdown code blijft hetzelfde
function toggleMenu() { document.getElementById("nav-menu").classList.toggle("active"); }

// Dropdown via toetsenbord
document.querySelectorAll('.dropdown > a').forEach(link=>{
  link.addEventListener('keydown', e=>{
    if(e.key==='Enter'||e.key===' '){ e.preventDefault(); const expanded=link.getAttribute('aria-expanded')==='true'; link.setAttribute('aria-expanded',!expanded); const dropdown=link.nextElementSibling; if(dropdown) dropdown.style.display=expanded?'none':'block'; }
  });
});

// Betaallinks
const betaalLinks={
  "Elite-Individual":"https://payment-links.mollie.com/payment/hfaDPV9sVdF22cTJzBKwo",
  "Talent-Individual":"https://payment-links.mollie.com/payment/WiLj5dGYSRBbDJYNUnFUV",
  "Basis-Individual":"https://payment-links.mollie.com/payment/sshgH8KUM6LYduEqMhwTS",
  "Elite-Group":"https://payment-links.mollie.com/payment/nt8RaBnSJG2Xa2zB3wUqH",
  "Talent-Group":"https://payment-links.mollie.com/payment/umexdvgPMLVKXU7rBxJV6",
  "Basis-Group":"https://payment-links.mollie.com/payment/Ht5pVB9KUektuZNB5iPum"
};

// Formulier
const aanmeldForm=document.getElementById('aanmeldFormulier');
aanmeldForm.addEventListener('submit', function(e){
  e.preventDefault();
  const naam=document.getElementById('naam').value.trim();
  const leeftijd=document.getElementById('leeftijd').value.trim();
  const dagen=Array.from(document.querySelectorAll('input[name="dag"]:checked')).map(i=>i.value);
  const tijden=Array.from(document.querySelectorAll('input[name="tijd"]:checked')).map(i=>i.value);
  const pakket=document.getElementById('pakket').value;
  if(!naam||!leeftijd||!dagen.length||!tijden.length||!pakket){ alert("Vul alles goed in."); return; }

  const betaalLink=pakket!=="Proeftraining"? betaalLinks[pakket]:null;
  let bericht=`Hallo, ik wil me aanmelden bij VoetbalAcademieVis\n\nNaam: ${naam}\nLeeftijd: ${leeftijd}\nDagen: ${dagen.join(', ')}\nTijden: ${tijden.join(', ')}\nPakket: ${pakket}`;
  const whatsappUrl=`https://wa.me/31657927473?text=${encodeURIComponent(bericht)}`;
  window.open(whatsappUrl,'_blank');

  if(betaalLink){ setTimeout(()=>{ window.location.href=betaalLink; },1500); }
  document.getElementById('form-feedback').style.display='block';
  aanmeldForm.reset();
});
</script>