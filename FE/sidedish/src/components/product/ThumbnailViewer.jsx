import React, { useState } from "react";
import { ThumbnailContainer, Current, List, Thumbnail } from "style/product/ThumbnailViewer";

const ThumbnailViewer = ({ thumbnails }) => {
	const [current, setCurrent] = useState(thumbnails[0]);

	const handleCurrentThumbnail = (e) => {
		setCurrent(e.target.src);
	};

	return (
		<ThumbnailContainer>
			<Current>
				<img src={current} />
			</Current>
			<div>
				<List>
					{thumbnails.map((url, index) => (
						<Thumbnail key={url}>
							<img
								src={url}
								alt={"Product image " + (index + 1)}
								onMouseEnter={handleCurrentThumbnail}
							/>
						</Thumbnail>
					))}
				</List>
			</div>
		</ThumbnailContainer>
	);
};

export default ThumbnailViewer;
