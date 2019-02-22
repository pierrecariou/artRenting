const searchScroll = () => {
  const anchor = document.getElementById("anchor_search");
  console.log(anchor);
  if (window.location.search !== "") {
    // window.scrollTo(anchor);
    anchor.scrollIntoView();
  }
};

export { searchScroll };
