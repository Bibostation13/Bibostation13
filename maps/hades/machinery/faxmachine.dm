
/**
* Hades fax machine overrides. Cleaner than map stuff.
**/

/obj/machinery/photocopier/faxmachine
  send_access = list()

/obj/machinery/photocopier/faxmachine/hades
	send_access = list(access_hades_fax)
