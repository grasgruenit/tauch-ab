import CMS from 'netlify-cms-app';
import { de } from 'netlify-cms-locales';

CMS.registerLocale('de', de);

import AboutPreview from "./templates/about.js";

CMS.registerPreviewStyle("/css/resume.css");
CMS.registerPreviewStyle("/css/tweaks.css");

CMS.registerPreviewTemplate("about", AboutPreview);
CMS.init();
