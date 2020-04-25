import React from "react";
import GlobalStyles from "style/GlobalStyle";
import Header from "./header/Header";
import Carousel from "./carouselLibR/Carousel";
import CarouselHuey from './carouselLibH/Carousel'

function App() {
	return (
		<div className="App">
			<GlobalStyles width="1000px" />
			<Header />
			<Carousel />
			<CarouselHuey url="main"/>
		</div>
	);
}

export default App;
