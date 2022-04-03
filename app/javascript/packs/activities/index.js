function hello(name) {
  let greeting = "Hello, " + name + "!";
  console.log(greeting);
  alert(greeting);
}

document.addEventListener('turbolinks:load', () => {
  const filters = document.getElementById("filters");
  filters.addEventListener("change", () => {
    alert("Entro mae...")
  })
  // const clickButton = document.getElementById("filters");
  // clickButton.addEventListener('click', (event) => {
  //     hello('JavaScript')
  // });
});