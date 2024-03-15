// Add shepherd
$('head').prepend( '<script src="js/admin/lib/shepherd/lutece-admin-shepherd.js"></script>' );
$(function(){ 
    $('.navbar .dropdown .dropdown-menu .dropdown-item.is-white').remove();

    if( $('#appointment_dashboard_card_dashboard_card_body').length > 0 ){
        const tour = initTour( );
        initStep( tour, 'Accueil', 'Cliquez ici pour accéder à la page des rendez-vous', {element: "#appointment_dashboard_card_dashboard_card_body .fa-calendar", on: "bottom"}, [{action() {return this.back(); }, text: 'Back'}, {action() {return this.next(); }, text: 'After'}, {action() {return window.location.replace("jsp/admin/plugins/appointment/ManageAppointments.jsp?view=viewCalendarManageAppointment&id_form=5");}, text: 'Next'}],'home',true);
        initStep( tour, 'Planning', 'Cliquez ici afin de vous diriger vers la page de planning', {element: "#appointment_dashboard_card_dashboard_card_body .fa-clock", on: "bottom"}, [{action() {return this.back(); }, text: 'Back'}, {action() {return window.location.replace("jsp/admin/plugins/appointment/modules/desk/ManageAppointmentDesks.jsp?plugin_name=appointment-desk&id_form=5&context=slot"); }, text: 'After'}, {action() {return this.next(); }, text: 'Next'}]);
        initStep( tour, 'Config', 'En cliquant ici, vous accederez directement à la page de config', {element: "#appointment_dashboard_card_dashboard_card_body .fa-wrench", on: "bottom"}, [{action() {return this.back(); }, text: 'Back'}, {action() {return window.location.replace("jsp/admin/plugins/appointment/ManageAppointmentForms.jsp?view=modifyAppointmentForm&id_form=5"); }, text: 'After'}, {action() {return this.next(); }, text: 'Next'}]);
        initStep( tour, 'Messages', 'Cliquez ici pour accéder aux messages', {element: "#appointment_dashboard_card_dashboard_card_body .fa-comment", on: "bottom"}, [{action() {return this.back(); }, text: 'Back'}, {action() {return window.location.replace("jsp/admin/plugins/appointment/ManageAppointmentForms.jsp?view=modifyAppointmentFormMessages&id_form=5"); }, text: 'After'}, {action() {return window.location.replace("jsp/admin/AdminMenu.jsp");}, text: 'Next'}]);
        tour.start();
    }
    
    if( $('#manage-calendar').length > 0 ){
        const tour = initTour( );
        initStep( tour, 'Aujourd\'hui', 'Ici, vous êtes à la date d\'aujourd\'hui', {element: ".fc-today-button", on: "bottom"}, [{action() {return window.location.replace("jsp/admin/AdminMenu.jsp");}, text: 'Home'}, {action() {return this.back(); }, text: 'Back'}, {action() {return this.next(); }, text: 'Next'}]);
	    initStep( tour, 'Calendrier', 'Ici, vous pouvez consulter le calendrier quand vous voulez', {element: ".fc-datePicker-button", on: "bottom"}, [{action() {return this.back(); }, text: 'Back'}, {action() {return this.next(); }, text: 'Next'}]);
	    initStep( tour, 'Semaine précedente', 'En cliquant ici, vous vous dirigerez vers la semaine précedente', {element: ".fc-prev-button", on: "bottom"}, [{action() {return this.back(); }, text: 'Back'}, {action() {return this.next(); }, text: 'Next'}]);
	    initStep( tour, 'Semaine suivante', 'En cliquant ici, vous vous dirigerez vers la semaine suivante', {element: ".fc-next-button", on: "bottom"}, [{action() {return this.back(); }, text: 'Back'}, {action() {return this.next();}, text: 'Next'}]);
	    initStep( tour, 'jeu. 07/07 de 14h00 à 15h00', 'Vous etes sur un créneau horaire', {element: ".fc-content", on: "bottom"}, [{action() {return this.back(); }, text: 'Back'}, {action() {return window.location.replace("jsp/admin/AdminMenu.jsp");}, text: 'Next'}]);
        tour.start();
    }
});
