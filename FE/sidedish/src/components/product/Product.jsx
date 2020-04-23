import React from "react";
import ThumbnailViewer from "./ThumbnailViewer";
import ProductInfo from "./ProductInfo";
import prodMockData from "../../assets/prodMockdata";
import { ProdBackground, ProdContainer } from "../../style/product/ProductContainer";

const Product = () => {
	const { thumb_images, ...info } = prodMockData.data;
	return (
		<ProdBackground>
			<ProdContainer>
				<ThumbnailViewer thumbnails={thumb_images} />
				<ProductInfo {...info} />
			</ProdContainer>
		</ProdBackground>
	);
};

export default Product;
