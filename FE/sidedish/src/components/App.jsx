import React from "react";
import GlobalStyles from "../style/GlobalStyle";
import Carousel from "./carouselLibR/Carousel";
import Product from "./product/Product";

function App() {
	return (
		<div className="App">
			<GlobalStyles />
			<Carousel />
			<Product />
		</div>
	);
}

export default App;
