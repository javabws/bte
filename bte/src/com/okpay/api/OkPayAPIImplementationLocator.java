/**
 * OkPayAPIImplementationLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.okpay.api;

public class OkPayAPIImplementationLocator extends org.apache.axis.client.Service implements com.okpay.api.OkPayAPIImplementation {

    public OkPayAPIImplementationLocator() {
    }


    public OkPayAPIImplementationLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public OkPayAPIImplementationLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for BasicHttpBinding_I_OkPayAPI
    private java.lang.String BasicHttpBinding_I_OkPayAPI_address = "https://api.okpay.com/OkPayAPI";

    public java.lang.String getBasicHttpBinding_I_OkPayAPIAddress() {
        return BasicHttpBinding_I_OkPayAPI_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String BasicHttpBinding_I_OkPayAPIWSDDServiceName = "BasicHttpBinding_I_OkPayAPI";

    public java.lang.String getBasicHttpBinding_I_OkPayAPIWSDDServiceName() {
        return BasicHttpBinding_I_OkPayAPIWSDDServiceName;
    }

    public void setBasicHttpBinding_I_OkPayAPIWSDDServiceName(java.lang.String name) {
        BasicHttpBinding_I_OkPayAPIWSDDServiceName = name;
    }

    public com.okpay.api.I_OkPayAPI getBasicHttpBinding_I_OkPayAPI() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(BasicHttpBinding_I_OkPayAPI_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getBasicHttpBinding_I_OkPayAPI(endpoint);
    }

    public com.okpay.api.I_OkPayAPI getBasicHttpBinding_I_OkPayAPI(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            com.okpay.api.BasicHttpBinding_I_OkPayAPIStub _stub = new com.okpay.api.BasicHttpBinding_I_OkPayAPIStub(portAddress, this);
            _stub.setPortName(getBasicHttpBinding_I_OkPayAPIWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setBasicHttpBinding_I_OkPayAPIEndpointAddress(java.lang.String address) {
        BasicHttpBinding_I_OkPayAPI_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (com.okpay.api.I_OkPayAPI.class.isAssignableFrom(serviceEndpointInterface)) {
                com.okpay.api.BasicHttpBinding_I_OkPayAPIStub _stub = new com.okpay.api.BasicHttpBinding_I_OkPayAPIStub(new java.net.URL(BasicHttpBinding_I_OkPayAPI_address), this);
                _stub.setPortName(getBasicHttpBinding_I_OkPayAPIWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("BasicHttpBinding_I_OkPayAPI".equals(inputPortName)) {
            return getBasicHttpBinding_I_OkPayAPI();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("https://api.okpay.com", "OkPayAPIImplementation");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("https://api.okpay.com", "BasicHttpBinding_I_OkPayAPI"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("BasicHttpBinding_I_OkPayAPI".equals(portName)) {
            setBasicHttpBinding_I_OkPayAPIEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
