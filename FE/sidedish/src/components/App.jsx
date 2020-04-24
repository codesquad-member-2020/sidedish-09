import React from "react";
import GlobalStyles from "style/GlobalStyle";
import Header from "./header/Header";
import Carousel from "./carouselLibR/Carousel";

function App() {
	return (
		<div className="App">
			<GlobalStyles width="1000px" />
			<Header />
			<Carousel />
		</div>
	);
}

export default App;
