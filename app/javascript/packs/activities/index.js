document.addEventListener('turbolinks:load', () => {
  const filters = document.getElementById("filters");
  filters.addEventListener("change", () => {
    // filters.selectedIndex = 0;
    // filters.value = filters.value;
    if (filters.value) {
      var url = `http://localhost:3000/activities?order=${filters.value}`
      document.location.href = url;  
    } else {
      var url = "http://localhost:3000/activities"
    }
    const Http = new XMLHttpRequest();
    Http.open("GET", url, false)
    Http.send()
  });
});