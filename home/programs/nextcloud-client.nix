{ pkgs, ... }: {
    services.nextcloud-client = {
        enable = true;
        package = nextcloud-client;
        startInBackground = true;
    };
}