package subway.dto;

public class StationRegisterRequest {
    
    private Long upStationId;
    private Long downStationId;
    private int distance;

    private StationRegisterRequest() {
    }

    public StationRegisterRequest(final Long upStationId, final Long downStationId, final int distance) {
        this.upStationId = upStationId;
        this.downStationId = downStationId;
        this.distance = distance;
    }
    
    public Long getUpStationId() {
        return upStationId;
    }

    public Long getDownStationId() {
        return downStationId;
    }

    public int getDistance() {
        return distance;
    }
}
