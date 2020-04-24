import React from "react";
import ThumbnailViewer from "./ThumbnailViewer";
import ProductInfo from "./ProductInfo";
import prodMockData from "../../assets/prodMockdata";
import { ProdBackground, ProdContainer, CloseBtn } from "../../style/product/Product";

const Product = () => {
	const { thumb_images, ...info } = prodMockData.data;
	return (
		<ProdBackground>
			<ProdContainer>
				<ThumbnailViewer thumbnails={thumb_images} />
				<ProductInfo {...info} />
				<CloseBtn>&times;</CloseBtn>
			</ProdContainer>
		</ProdBackground>
	);
};

export default Product;
