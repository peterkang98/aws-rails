let list = document.querySelectorAll(".chord, .no-lyrics-chord");
let chords = [];
for (let i = 0; i < list.length; i++) {
  chords.push(list[i].innerHTML);
  list[i].innerHTML = `${list[i].innerHTML}<img src="/chords/${encodeURIComponent(list[i].innerHTML)}.svg" class="img-chord">`;
}

let shown = true;
let scrollEnabled = false;
let scrollSpeed = 45;
let timeout = 0;
let curCapo = document.getElementById("capo").value;
let curKey = 0;
const scale = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"];

function toggleChords() {
  let list = document.getElementsByClassName("img-chord");
  let button = document.getElementById("show");
  button.innerHTML = shown ? "<strong>코드 운지법 표시: OFF</strong>" : "<strong>코드 운지법 표시: ON</strong>";
  if (shown) {
    for (let i = 0; i < list.length; i++) {
      list[i].style.display = "none";
    }
    button.classList.remove("btn-info");
    button.classList.add("btn-danger");
  } else {
    for (let i = 0; i < list.length; i++) {
      list[i].style.display = "inline-block";
    }
    button.classList.remove("btn-danger");
    button.classList.add("btn-info");
  }
  shown = !shown;
}

function toggleScroll() {
  scrollEnabled = !scrollEnabled;
  if (scrollEnabled) {
    pageScroll();
  } else {
    clearTimeout(timeout);
  }
}

function pageScroll() {
  window.scrollBy(0, 1);
  timeout = setTimeout(pageScroll, scrollSpeed);
}

function setSpeed(val) {
  document.getElementById("bpm-speed").checked = false;
  scrollSpeed = val == 20 ? 45 * 0.05 : 45 * ((20 - val) / 10);
}

function setSpeedToBpm(bpm) {
  const beat_dur = 60 / bpm;
  const bars_time = beat_dur * 4 * 3;
  scrollSpeed = bars_time * 9;
}

function transpose(amount, option) {
  amount = parseInt(amount);
  if(option == "Key"){
    curKey = amount;
  }else if(option == "Capo"){
    curCapo = amount;
  }
  
  if((curKey - curCapo)==0){
    for (let i = 0; i < list.length; i++) {
      list[i].innerHTML = `${chords[i]}<img src="/chords/${encodeURIComponent(chords[i])}.svg" class="img-chord">`;
    }
  }else{
    let newChord = "";
    for (let i = 0; i < list.length; i++) {
      newChord = chords[i].replace(/[CDEFGAB]#?/g, (match) => {
        const index = (scale.indexOf(match) + (curKey - curCapo)) % scale.length;
        return scale[index < 0 ? index + scale.length : index];
      });
      list[i].innerHTML = `${newChord}<img src="/chords/${encodeURIComponent(newChord)}.svg" class="img-chord">`;
    }
  }
}

window.transpose = transpose;
window.setSpeedToBpm = setSpeedToBpm;
window.setSpeed = setSpeed;
window.toggleScroll = toggleScroll;
window.toggleChords = toggleChords;