import React from "react";
import {
	InfoContainer,
	Title,
	SubTitle,
	ContentContainer,
	ContentTerm,
	ContentDescription,
	PriceContainer,
	OriginalPrice,
	SellingPrice,
	Unit,
	CountContainer,
	CountTerm,
	CountBtn,
	Count,
	TotalContainer,
	TotalText,
	TotalAmount,
	TotalUnit,
	CartBtn,
} from "../../style/product/ProductInfo";

const ProductInfo = ({
	title,
	product_description,
	point,
	delivery_info,
	delivery_fee,
	prices: [originalPrice, sellingPrice],
}) => {
	return (
		<InfoContainer>
			<div>
				<Title>{title}</Title>
				<SubTitle>{product_description}</SubTitle>
			</div>
			<ContentContainer>
				<ContentTerm>적립금</ContentTerm>
				<ContentDescription>{point}</ContentDescription>
				<ContentTerm>배송정보</ContentTerm>
				<ContentDescription>{delivery_info}</ContentDescription>
				<ContentTerm>배송비</ContentTerm>
				<ContentDescription>{delivery_fee}</ContentDescription>
			</ContentContainer>
			<PriceContainer>
				<OriginalPrice>{originalPrice.slice(0, -1)}</OriginalPrice>
				<SellingPrice>
					{sellingPrice.slice(0, -1)}
					<Unit>원</Unit>
				</SellingPrice>
			</PriceContainer>
			<ContentContainer>
				<CountTerm>수량</CountTerm>
				<ContentDescription>
					<CountContainer>
						<CountBtn>-</CountBtn>
						<Count>1</Count>
						<CountBtn>+</CountBtn>
					</CountContainer>
				</ContentDescription>
			</ContentContainer>
			<TotalContainer>
				<TotalText>총 상품금액</TotalText>
				<TotalAmount>{sellingPrice.slice(0, -1)}</TotalAmount>
				<TotalUnit>원</TotalUnit>
			</TotalContainer>
			<CartBtn>담기</CartBtn>
		</InfoContainer>
	);
};

export default ProductInfo;
