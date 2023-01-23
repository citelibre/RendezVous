const shepherdCookieName = 'lutece-shepherd-tour';
function initShepherd(){
$('head').append( '<link rel="stylesheet" href="js/util/shepherd/shepherd.css"></link>' );
$('head').append( '<link rel="stylesheet" href="js/util/shepherd/lutece-shepherd.css"></link>' );
$('head').append( '<script src="js/util/shepherd/shepherd.min.js"></script>' );
}

function initTour( tourClasses ){
const tour = new Shepherd.Tour({
	defaultStepOptions: {
		cancelIcon: {
			enabled: true
		},
		classes: tourClasses,
		scrollTo: { behavior: 'smooth', block: 'center' },
		useModalOverlay: true    	
	}
});
return tour;
}

function initStep( stepTour, stepTitle, stepText, stepAttachTo, stepButtons, stepId, hasDismiss ){
const dismissArray = [{ text: 'Passer le tutoriel', classes: 'shepherd-button-close', action(){ dismissTour( this ); return this.hide() }}];
let buttons=stepButtons;
if ( hasDismiss ){
	buttons = dismissArray.concat( stepButtons );
}
stepTour.addStep({
	title: stepTitle,
	text: stepText,
	attachTo: stepAttachTo,
	buttons: buttons,
	id: stepId	
});
}    

function setToolbarTour( t ) {
$('.navbar-main > .nav-item > .nav-link.btn-show-shepherd').parents('.nav-item').remove(); 
$('.navbar-main').append('<li class="nav-item "><a class="nav-link btn-show-shepherd" title="Show Tour"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pin-map" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M3.1 11.2a.5.5 0 0 1 .4-.2H6a.5.5 0 0 1 0 1H3.75L1.5 15h13l-2.25-3H10a.5.5 0 0 1 0-1h2.5a.5.5 0 0 1 .4.2l3 4a.5.5 0 0 1-.4.8H.5a.5.5 0 0 1-.4-.8l3-4z"/><path fill-rule="evenodd" d="M8 1a3 3 0 1 0 0 6 3 3 0 0 0 0-6zM4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999z"/></svg></a></li>');
$('.btn-show-shepherd').on('click', function(){ 
	localStorage.removeItem(shepherdCookieName)
	startTour(t);
});
}

function dismissTour( t ) {
if ( !localStorage.getItem( shepherdCookieName ) ){
	localStorage.setItem(shepherdCookieName, 'off');
	setToolbarTour( t )
}
}

function startTour( t ) {
// Initiate the tour
if ( !localStorage.getItem(shepherdCookieName) ) {
	t.start();
	t.on( 'cancel', function(){ 
		localStorage.setItem(shepherdCookieName, 'off');
		setToolbarTour( t ) 
	});
} else {
	setToolbarTour( t );
}
}

initShepherd();