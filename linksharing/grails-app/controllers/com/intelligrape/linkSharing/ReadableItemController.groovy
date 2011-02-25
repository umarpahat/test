package com.intelligrape.linkSharing

class ReadableItemController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [readableItemInstanceList: ReadableItem.list(params), readableItemInstanceTotal: ReadableItem.count()]
    }

    def create = {
        def readableItemInstance = new ReadableItem()
        readableItemInstance.properties = params
        return [readableItemInstance: readableItemInstance]
    }

    def save = {
        def readableItemInstance = new ReadableItem(params)
        if (readableItemInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'readableItem.label', default: 'ReadableItem'), readableItemInstance.id])}"
            redirect(action: "show", id: readableItemInstance.id)
        }
        else {
            render(view: "create", model: [readableItemInstance: readableItemInstance])
        }
    }

    def show = {
        def readableItemInstance = ReadableItem.get(params.id)
        if (!readableItemInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'readableItem.label', default: 'ReadableItem'), params.id])}"
            redirect(action: "list")
        }
        else {
            [readableItemInstance: readableItemInstance]
        }
    }

    def edit = {
        def readableItemInstance = ReadableItem.get(params.id)
        if (!readableItemInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'readableItem.label', default: 'ReadableItem'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [readableItemInstance: readableItemInstance]
        }
    }

    def update = {
        def readableItemInstance = ReadableItem.get(params.id)
        if (readableItemInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (readableItemInstance.version > version) {
                    
                    readableItemInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'readableItem.label', default: 'ReadableItem')] as Object[], "Another user has updated this ReadableItem while you were editing")
                    render(view: "edit", model: [readableItemInstance: readableItemInstance])
                    return
                }
            }
            readableItemInstance.properties = params
            if (!readableItemInstance.hasErrors() && readableItemInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'readableItem.label', default: 'ReadableItem'), readableItemInstance.id])}"
                redirect(action: "show", id: readableItemInstance.id)
            }
            else {
                render(view: "edit", model: [readableItemInstance: readableItemInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'readableItem.label', default: 'ReadableItem'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def readableItemInstance = ReadableItem.get(params.id)
        if (readableItemInstance) {
            try {
                readableItemInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'readableItem.label', default: 'ReadableItem'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'readableItem.label', default: 'ReadableItem'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'readableItem.label', default: 'ReadableItem'), params.id])}"
            redirect(action: "list")
        }
    }
}
