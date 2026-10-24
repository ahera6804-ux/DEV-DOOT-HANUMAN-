# DEV DOOT HANUMAN — Community Help Pilot v2

A mobile-friendly Node.js/Express prototype for Nashik community assistance. It includes a public request form, optional photos and geolocation, English/Marathi/Hindi interface controls, browser voice input where supported, request tracking, volunteer/provider registration, safety reports, and a coordinator dashboard.

## Run on Windows
1. Install Node.js 18 or newer from https://nodejs.org/.
2. Extract this ZIP completely.
3. Open the extracted `Dev_Doot_Hanuman_Corrected` folder.
4. Double-click `START_WEBSITE.bat`, or open a terminal in this folder and run:
   ```bash
   npm install
   npm start
   ```
5. Open http://localhost:3000 in Chrome. Dashboard: http://localhost:3000/admin.html

## Local test login
- Username: `admin`
- Password: `Doot@2026!`

This is a local demo login only. Change it before exposing the app to any network by setting `ADMIN_USERNAME`, `ADMIN_PASSWORD`, and a long random `SESSION_SECRET` in the server environment. Never commit secrets to GitHub.

## Implemented in this pilot
- Community request submission, generated reference IDs, status tracking, and coordinator WhatsApp summary link.
- Optional JPG/PNG/WebP problem/person photos (5 MB each); private upload route requires coordinator login.
- Optional location sharing after user permission, coordinates available to coordinator, and map link in dashboard.
- English/Marathi/Hindi selector with translations for the main headline and core controls; request language is stored. This is not yet a complete translation of every label and message.
- Browser speech-to-text when supported, with microphone troubleshooting and Windows Win + H fallback.
- Service categories for medical facility guidance, food/water, directions, transport, accessibility, lost-person coordination, repairs, elderly support, blood donation coordination, Kumbh/event help and other needs.
- Volunteer/paid provider/organization registration with coordinator review states.
- Admin request dashboard, status history, helper assignment field, price note, provider approval/suspension, safety report review, donation offer review/status, and service feedback moderation.
- Privacy/safety notice, emergency 112 guidance, and local official-information links.

## Not connected / not production-ready
- No actual emergency dispatch, guaranteed response time, live volunteer matching, SMS/push notifications, online payments/payouts, donation collection, background-check provider, official live Kumbh feed, or verified live help-point map.
- Trusted contact is stored if entered; the app does not automatically notify that person.
- Request/provider/report records use local JSON files and photos use a local folder. Data can be lost if the host filesystem is reset, and this storage is not suitable for a public launch with real personal information.
- Session storage is the default in-memory Express session store. Add a production session store, persistent managed database, secure object storage, CSRF protection, robust rate limiting, monitoring, backups, audit/security review, account-based roles, and retention/deletion workflow before public use.
- Provider approval is a coordinator status only; it does not establish identity or a background check.

## Important safety notes
- For immediate emergencies in India, call 112. Do not wait for this app.
- Do not collect Aadhaar, OTPs, passwords, bank details, or unnecessary medical information.
- Collect photos only with permission. Photos are optional; do not delay emergency help to take them.
- The app is a pilot and is not an official emergency response system. Do not advertise guaranteed response times or official partnerships without formal agreements.


## Updates in this build
- Browser-local list of submitted request reference numbers (references only; contact details are not saved in local storage).
- Separate donation / community-support offer form and coordinator review/status controls. It records offers for coordinator review and does not accept payments.
- Nearby public-service map search via Google Maps (external listings are not verified by this app).
- Service rating and feedback for completed/closed requests, verified against the request reference and contact; coordinator moderation in dashboard.
- Improved voice input feedback and fallback instructions for Chrome / Windows voice typing (Win + H). Speech recognition support depends on browser, microphone permission and internet connection.

Donations are saved to local `donations.json`; they are not payment transactions. Local JSON files and uploaded photos are not production-grade storage.


## Rebuild validation
- JavaScript syntax checked with `node --check` for the public app, admin dashboard and server.
- This ZIP is a local pilot rebuild, not a fully security-reviewed production service. Secure cloud accounts/database, SMS/push delivery, online payment integration, verified helper identity checks and official event feeds require additional services and deployment configuration.


## Added in the complete rebuild
- Installable progressive web app (PWA) shell for compatible browsers; cached shell only, not offline request submission.
- Saffron Hanuman gada app icon and manifest.
- My request reference numbers stored in the current browser, donation offer tracking, coordinator donation/feedback tabs, map search links, and multilingual UI controls.
- Duplicate client event handlers removed to avoid duplicate form submissions.

## Still requires setup before public launch
- Production database and backups (current records are local JSON files).
- Strong unique coordinator credentials and SESSION_SECRET environment variables; replace demo credentials before any network exposure.
- HTTPS domain/hosting, secure upload storage, privacy review, retention/deletion workflows and production rate limiting.
- SMS/email/push notifications, online payments, identity verification, live verified map data and official Kumbh feeds are not integrated.
- Map search opens third-party Google Maps; listings are not vetted by this app. Speech recognition support depends on browser, microphone permissions and internet availability.
- PWA install/offline shell behavior varies by browser; server APIs require connectivity.

## Local verification
Run `npm install`, then `npm test` to check JavaScript syntax. Run `npm start` and open `/api/health` for the HTTP health check. This does not replace security review or full user-journey testing.


## Community illustration graphics
The public interface includes ten original, locally hosted SVG illustrations for Hanuman seva, medical help, food and water, volunteers, donations, temple/events, nearby help, voice help, safety, and elder care. These are vector graphics (not photographs), require no third-party image service, and scale to mobile screens.
