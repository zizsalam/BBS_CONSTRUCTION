

import React from 'react';
import ReactDOM from 'react-dom';
import TestimonialCarousel from '../components/TestimonialCarousel';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <TestimonialCarousel />,
    document.getElementById('testimonial-carousel') // Make sure this element exists in your HTML
  );
});
