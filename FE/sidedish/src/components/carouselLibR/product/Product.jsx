import React, { useContext } from "react";
import ReactDOM from "react-dom";
import ThumbnailViewer from "./ThumbnailViewer";
import ProductInfo from "./ProductInfo";
import { ProdBackground, ProdContainer, CloseBtn } from "style/product/Product";
import { ProductContext } from "contexts/productContext";

const Product = () => {
	const { modal, handleModal, modalContent } = useContext(ProductContext);
	if (modal && modalContent) {
		const { thumb_images, ...info } = modalContent;
		return ReactDOM.createPortal(
			<ProdBackground>
				<ProdContainer>
					<ThumbnailViewer thumbnails={thumb_images} />
					<ProductInfo {...info} />
					<CloseBtn onClick={() => handleModal()}>&times;</CloseBtn>
				</ProdContainer>
			</ProdBackground>,
			document.getElementById("root")
		);
	} else {
		return null;
	}
};

export default Product;
