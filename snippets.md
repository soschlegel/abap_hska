# Usefull snippets

find here some stuff that may help you

## Calling an HTTP-Service

A simple snippet to call an HTTP-Endpoint

``` abap
DATA(lv_url) = |https://de.wikipedia.org/wiki/Representational_State_Transfer|.

    TRY.

        DATA(lo_destination) = cl_http_destination_provider=>create_by_url( lv_url ).
        DATA(lo_http) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

        DATA(lo_request) = lo_http->get_http_request( ).

        DATA(lo_reponse) = lo_http->execute( i_method = if_web_http_client=>get ).

        out->write( lo_reponse->get_text( ) ).

      CATCH cx_root INTO DATA(lx_root).

        out->write( lx_root->get_longtext( ) ).

    ENDTRY.
```

Find further help here:

* [How to call a remote OData service from the trial version of SAP Cloud Platform ABAP environment](https://blogs.sap.com/2019/10/20/how-to-call-a-remote-odata-service-from-the-trial-version-of-sap-cloud-platform-abap-environment/comment-page-1/#comment-500298)