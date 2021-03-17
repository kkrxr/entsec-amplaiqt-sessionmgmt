-- Table: APPDATA.notification_config

-- DROP TABLE "APPDATA"."notification_config";

CREATE TABLE "APPDATA"."notification_config"
(
    channel text NOT NULL,
    "fromCol" text NOT NULL,
    "toCol" text NOT NULL,
    cc text,
    bcc text,
    template text NOT NULL,
    subject text,
    "configKey" text NOT NULL,
    CONSTRAINT "notification_config_pkey" PRIMARY KEY ("configKey")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "APPDATA"."notification_config"
    OWNER to "DB-AAUSYD-COALINT-DEV-ADMIN";

GRANT ALL ON TABLE "APPDATA"."notification_config" TO "DB-AAUSYD-COALINT-DEV-ADMIN";

GRANT SELECT ON TABLE "APPDATA"."notification_config" TO "DB-AAUSYD-COALINT-DEV-READ";

GRANT DELETE, INSERT, UPDATE, SELECT ON TABLE "APPDATA"."notification_config" TO "DB-AAUSYD-COALINT-DEV-RW";