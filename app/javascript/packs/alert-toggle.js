const alertToggle = () => {
  const notificationBar = document.querySelector('.notifications-bar');
  const notificationTitle = document.querySelector('.notifications-title');
    notificationBar.classList.toggle('hidden');
    notificationTitle.classList.toggle('hidden');
}

const bellToggle = () => {
  const bellFill = document.getElementById('bell-fill');
  const bellEmpty = document.getElementById('bell');
    bellFill.classList.toggle('hidden');
    bellEmpty.classList.toggle('hidden');
}

export const notifications = () => {
  document.getElementById('bell-fill').addEventListener('click', function(){
    alertToggle();
    // bellToggle();
  });
  document.getElementById('bell').addEventListener('click', function(){
    bellToggle();
  });
};

export const bellHover = () => {
  const bellFill = document.getElementById('bell-fill');
  const bellEmpty = document.getElementById('bell');

  bellEmpty.addEventListener("mouseenter", (event) => {
    bellFill.classList.toggle('hidden');
    bellEmpty.classList.toggle('hidden');
  });
  bellFill.addEventListener('mouseleave', (event) => {
    bellFill.classList.toggle('hidden');
    bellEmpty.classList.toggle('hidden');
  });
}
