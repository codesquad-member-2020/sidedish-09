import React from "react";
import Header from './header/Header'
import Carousel from "./carouselLibR/Carousel";
import GlobalStyles from "../style/GlobalStyle";

function App() {
	return (
		<div className="App">
			<GlobalStyles width='1000px'/>
			<Header />
			<Carousel />
		</div>
	);
}

export default App;
