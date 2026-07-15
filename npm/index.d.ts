declare module '@apiverve/tordetect' {
  export interface tordetectOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface tordetectResponse {
    status: string;
    error: string | null;
    data: TorNodeDetectorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface TorNodeDetectorData {
      ipAddress: null | string;
      isTor:     boolean | null;
      ipDetails: IPDetails;
      parsed:    boolean | null;
  }
  
  interface IPDetails {
      range:    (number | null)[];
      country:  null | string;
      region:   null | string;
      timezone: null | string;
  }

  export default class tordetectWrapper {
    constructor(options: tordetectOptions);

    execute(callback: (error: any, data: tordetectResponse | null) => void): Promise<tordetectResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: tordetectResponse | null) => void): Promise<tordetectResponse>;
    execute(query?: Record<string, any>): Promise<tordetectResponse>;
  }
}
