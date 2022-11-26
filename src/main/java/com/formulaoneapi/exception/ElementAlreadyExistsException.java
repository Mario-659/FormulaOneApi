package com.formulaoneapi.exception;

public class ElementAlreadyExistsException extends RuntimeException{
    public ElementAlreadyExistsException() { }

    public ElementAlreadyExistsException(String message) {
        super(message);
    }

    public ElementAlreadyExistsException(String message, Throwable cause) {
        super(message, cause);
    }

    public ElementAlreadyExistsException(Throwable cause) {
        super(cause);
    }
}
