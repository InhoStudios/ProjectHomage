document.body.contentEditable = true;

document.addEventListener('click', handler, true);

function handler(e){
    if(document.body.spellcheck) return;
    e.stopPropagation();
    e.preventDefault();
}