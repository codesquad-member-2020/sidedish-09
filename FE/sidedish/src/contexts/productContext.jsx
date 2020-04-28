import React, { createContext } from "react";
import useModal from "hooks/useModal";
import Product from "components/carouselLibR/product/Product";

let ProductContext;
const { Provider } = (ProductContext = createContext());

const ProductProvider = ({ children }) => {
	const { modal, handleModal, modalContent } = useModal();
	return (
		<Provider value={{ modal, handleModal, modalContent }}>
			<Product />
			{children}
		</Provider>
	);
};

export { ProductContext, ProductProvider };
