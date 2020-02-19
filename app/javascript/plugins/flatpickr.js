const setFlatpickr = () => {
  console.log("setFlatpickr")
  if (document.querySelector('#flatpickr-start')) {
    console.log("hey")
    flatpickr("#flatpickr-start", {})
    flatpickr("#flatpickr-end", {})
  }
};

export { setFlatpickr };
