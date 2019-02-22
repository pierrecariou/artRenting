import "bootstrap";
import "../plugins/flatpickr";

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { previewImageOnFileSelect } from '../components/photo_preview';
previewImageOnFileSelect();

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { searchScroll } from '../plugins/search_scroll';

searchScroll();
