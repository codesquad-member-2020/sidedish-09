import React from "react";
import GlobalStyles from "style/GlobalStyle";
import Header from "./header/Header";
import Best from "./best/Best";
import Carousel from "./carouselLibR/Carousel";
import Main from "./carouselLibH/Main";

function App() {
	return (
		<div className="App">
			<GlobalStyles width="1000px" />
			<Header />
			<Best />
			<Carousel />
			<Main />
		</div>
	);
}

export default App;
