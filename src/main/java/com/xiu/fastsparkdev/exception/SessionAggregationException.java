package com.xiu.fastsparkdev.exception;

public class SessionAggregationException extends Exception{

    public SessionAggregationException() {
        super();
    }

    public SessionAggregationException(String message) {
        super(message);
    }

    public SessionAggregationException(String message, Throwable cause) {
        super(message, cause);
    }

    public SessionAggregationException(Throwable cause) {
        super(cause);
    }

    protected SessionAggregationException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
