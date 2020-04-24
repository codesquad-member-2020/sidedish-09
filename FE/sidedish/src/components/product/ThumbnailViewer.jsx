import React from "react";
import { ThumbnailContainer, Current, List, Thumbnail } from "style/product/ThumbnailViewer";

const ThumbnailViewer = ({ thumbnails }) => {
	return (
		<ThumbnailContainer>
			<Current>
				<img src={thumbnails[0]} />
			</Current>
			<div>
				<List>
					{thumbnails.map((url) => (
						<Thumbnail>
							<img src={url} />
						</Thumbnail>
					))}
				</List>
			</div>
		</ThumbnailContainer>
	);
};

export default ThumbnailViewer;
