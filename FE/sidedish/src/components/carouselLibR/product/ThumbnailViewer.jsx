import React, { useState, useEffect } from "react";
import PropTypes from "prop-types";
import { ThumbnailContainer, Current, List, Thumbnail } from "style/product/ThumbnailViewer";

const ThumbnailViewer = ({ thumbnails }) => {
	const [current, setCurrent] = useState(thumbnails[0]);

	useEffect(() => {
		setCurrent(thumbnails[0]);
	}, [thumbnails]);

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

ThumbnailViewer.propTypes = {
	thumbnails: PropTypes.arrayOf(PropTypes.string).isRequired,
};

export default ThumbnailViewer;
